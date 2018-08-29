unit unit65032;

{$mode objfpc}{$H+}

interface

uses

    Classes, SysUtils;

var ram:array[0..65535] of byte;
    status:byte;
    pc,sp,a,x,y:cardinal;
    cs,ds:^int64;
    ss,csa,dsa,csi,dsi:int64;
    value, aresult:word;
    reladdr:integer;

procedure exec65032;

implementation

uses retro;

procedure exec65032;

var opcode:byte;
    ea,eahelp,eahelp2:int64;

//flags: SVEB_DIZC

begin
cs:=@csa; ds:=@dsa;
  begin
  opcode := raml^[pc+cs^];
  inc(pc);
  case opcode of

  0://------------------------ $00  brk, imp, 7

    begin
    inc(pc);                                            //put incremented pc on the stack
    ramb^[ss+(sp+$100)]:=pc shr 8;
    ramb^[ss+(sp+$FF)]:=pc;
    ramb^[ss+(sp+$FE)]:=status or $10;                  //put flags on the stach with B set
    sp-=3;
    status:=status or 4;                                //set interrupt flag
    cs:=@csi;                                           //switch segments to interrupt context
    ds:=@dsi;
    pc := ramw^[(csi shr 1)+$7FFF];                     //jump to @$FFFE;
    end;

  1://------------------------ $01  ora, indx, 6

    begin

    //indx

    eahelp := ds^+((ramb^[cs^+pc] + x) and $FF);           //zero-page wraparound for table pointer
    ea:=ds^+256*ramb^[eahelp+1]+ramb^[eahelp];
    inc(pc);

    //ora

    a:=ramb^[ea] or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

  2: //---------------------- $02   ldc, abso, 7, 65032

    begin

    //abso

    ea:=ds^+256*ramb^[cs^+pc]+ramb^[cs^+pc+1];
    inc(pc); inc(pc);

    //ldc

    cs^:=$100000000*ramb^[ea+3]+$1000000*ramb^[ea+2]+$10000*ramb^[ea+1]+$100*ramb^[ea];
    end;

  3: //---------------------- $03  slo, indx, 8, ill=asl+ora

    begin

    //indx

    eahelp := ds^+((ramb^[cs^+pc] + x) and $FF);           //zero-page wraparound for table pointer
    ea:=ds^+256*ramb^[eahelp+1]+ramb^[eahelp];
    inc(pc);

    //asl

    value := ramb^[ea];
    aresult := value shl 1;
    ramb^[ea]:=aresult;
    if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;

    //ora

    a:=aresult or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

  4: //---------------------- $04  tsb, zp, 5, 65c02

    begin

    //zp

    ea := ds^+ramb^[cs^+pc];
    inc(pc);

    //tsb

    ramb^[ea]:=ramb^[ea] or a;
    if ramb^[ea]<>0 then status:=status and %11111101 else status:=status or $02;
    end;

  5: //---------------------- $05  ora, zp, 3

    begin

    //zp

    ea := ds^+ramb^[cs^+pc];
    inc(pc);

    //ora

    a:=ramb^[ea] or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

  6: //---------------------- $06  asl, zp, 5

    begin

    //zp

    ea := ds^+ramb^[cs^+pc];
    inc(pc);

    //asl

    value := ramb^[ea];
    aresult := value shl 1;
    ramb^[ea]:=aresult;
    if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
    if (aresult and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if aresult=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

  7: //---------------------- $07  slo, zp, 5, ill=asl+ora

    begin

    //zp

    ea := ds^+ramb^[cs^+pc];
    inc(pc);

    //asl

    value := ramb^[ea];
    aresult := value shl 1;
    ramb^[ea]:=aresult;
    if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;

    //ora

    a:=aresult or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

  8: //---------------------- $08  php, imp, 3

    begin
    ramb^[ss+(sp+$100)]:=status or $10;
    dec(sp);
    end;

  9: //---------------------- $09  ora, imm, 2

    begin

    //imm

    ea := cs^+pc;
    inc(pc);

    //ora

    a:=ramb^[ea] or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;


 10: //---------------------- $0A  asl, acc, 2

    begin
    a:=a shl 1;
    if (a and $FFFFFF00)<>0 then status:=status or 1 else status:=status and $FE;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    a:=a and $FF;
    end;

 11: //---------------------- $0B  nop, imm, 2, FREE

    begin
    inc(pc); // imm :)
    end;

 12: //---------------------- $0C  tsb, abso, 6, 65C02

    begin

    //abso

    ea:=ds^+256*ramb^[cs^+pc]+ramb^[cs^+pc+1];
    inc(pc); inc(pc);

    //tsb

    ramb^[ea]:=ramb^[ea] or a;
    if ramb^[ea]<>0 then status:=status and %11111101 else status:=status or $02;
    end;

 13: //---------------------- $0D  ora, abso, 4

    begin

    //abso

    ea:=ds^+256*ramb^[cs^+pc]+ramb^[cs^+pc+1];
    inc(pc); inc(pc);

    //ora

    a:=ramb^[ea] or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

 14: //---------------------- $0E  asl, abso, 6

    begin

    //abso

    ea:=ds^+256*ramb^[cs^+pc]+ramb^[cs^+pc+1];
    inc(pc); inc(pc);

    //asl

    value := ramb^[ea];
    aresult := value shl 1;
    ramb^[ea]:=aresult;
    if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
    if (aresult and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if aresult=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

 15: //---------------------- $0F  slo, abso, 6, ill

    begin

    //abso

    ea:=ds^+256*ramb^[cs^+pc]+ramb^[cs^+pc+1];
    inc(pc); inc(pc);

    //asl

    value := ramb^[ea];
    aresult := value shl 1;
    ramb^[ea]:=aresult;
    if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;

    //ora

    a:=aresult or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

 16: //---------------------- $10  bpl, rel, 2

    begin

    //rel8

    reladdr := ramb^[cs^+pc];
    inc(pc);
    if (reladdr and $80)<>0 then reladdr:=reladdr-256;

    //bpl

    if ((status and $80) = 0) then   pc += reladdr;
    end;

 17: //---------------------- $11  ora, indy, 5

    begin

    //indy

    eahelp := ramb^[cs^+pc];
    inc(pc);
    eahelp2 := (eahelp + 1) and $00FF; //zero-page wraparound
    ea := ramb^[ds^+eahelp] + 256* ramb^[ds^+eahelp2]+y;

    //ora

    a:=ramb^[ea] or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

 18: //---------------------- $12  ora, izp, 5. 65C02

    begin

    //izp

    eahelp := ramb^[cs^+pc];
    inc(pc);
    eahelp2 := (eahelp + 1) and $00FF; //zero-page wraparound
    ea := ramb^[ds^+eahelp] + 256* ramb^[ds^+eahelp2];

    //ora

    a:=ramb^[ea] or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

 19: //---------------------- $13  slo, indy, ill, 8
    begin

    //indy

    eahelp := ramb^[cs^+pc];
    inc(pc);
    eahelp2 := (eahelp + 1) and $00FF; //zero-page wraparound
    ea := ramb^[ds^+eahelp] + 256* ramb^[ds^+eahelp2]+y;

    //asl

    value := ramb^[ea];
    aresult := value shl 1;
    ramb^[ea]:=aresult;
    if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;

    //ora

    a:=aresult or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;


 20: //---------------------- $14  trb, zp, 5, 65C02

    begin

    //zp

    ea := ds^+ramb^[cs^+pc];
    inc(pc);

    //trb

    ramb^[ea]:=ramb^[ea] and not a;
    if ramb^[ea]<>0 then status:=status and %11111101 else status:=status or $02;
    end;

 21: //---------------------- $15  ora, zpx, 4

    begin

    //zpx

    ea := ds^+((ramb^[cs^+pc]+x) and $FF); //zero-page wraparound
    inc(pc);

    //ora

    a:=ramb^[ea] or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

 22: //---------------------- $16  asl, zpx, 6

    begin

    //zpx

    ea := ds^+((ramb^[cs^+pc]+x) and $FF); //zero-page wraparound
    inc(pc);

    //asl

    value := ramb^[ea];
    aresult := value shl 1;
    ramb^[ea]:=aresult;
    if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;
    if (aresult and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if aresult=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

 23: //---------------------- $17  slo, zpx, 6

    begin

    //zpx

    ea := ds^+((ramb^[cs^+pc]+x) and $FF); //zero-page wraparound
    inc(pc);

    //asl

    value := ramb^[ea];
    aresult := value shl 1;
    ramb^[ea]:=aresult;
    if (aresult and $FF00) <>0 then status:=status or 1 else status:=status and $FE;

    //ora

    a:=aresult or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

 24: //---------------------- $18  clc, imp, 2

    begin
    status:=status and $FE;
    end;

 25: //---------------------- $19  ora, absy, 4

    begin

    //absy

    ea := ds^+ramb^[cs^+pc] +256*ramb^[cs^+pc+1] +y;
    inc(pc); inc(pc);

    //ora

    a:=ramb^[ea] or a;
    if (a and $80)<>0 then status:=status or $80 else status:=status and $7F; //sign
    if a=0 then status:=status or $02 else status:=status and %11111101;      //zero
    end;

 26: //ina
    begin
    end;
 27: //slo
    begin
    end;
 28: //trb
    begin
    end;
 29: //ora
    begin
    end;
 30: //asl
    begin
    end;
 31: //slo
    begin
    end;
 32: //
    begin
    end;
 33:
    begin
    end;
 34:
    begin
    end;
 35:
    begin
    end;
 36:
    begin
    end;
 37:
    begin
    end;
 38:
    begin
    end;
 39:
    begin
    end;
 40:
    begin
    end;
 41:
    begin
    end;
 42:
    begin
    end;
 43:
    begin
    end;
 44:
    begin
    end;
 45:
    begin
    end;
 46:
    begin
    end;
 47:
    begin
    end;
 48:
    begin
    end;
 49:
    begin
    end;
 50:
    begin
    end;
 51:
    begin
    end;
 52:
    begin
    end;
 53:
    begin
    end;
 54:
    begin
    end;
 55:
    begin
    end;
 56:
    begin
    end;
 57:
    begin
    end;
 58:
    begin
    end;
 59:
    begin
    end;
 60:
    begin
    end;
 61:
    begin
    end;
 62:
    begin
    end;
 63:
    begin
    end;
 64:
    begin
    end;
 65:
    begin
    end;
 66:
    begin
    end;
 67:
    begin
    end;
 68:
    begin
    end;
 69:
    begin
    end;
 70:
    begin
    end;
 71:
    begin
    end;
 72:
    begin
    end;
 73:
    begin
    end;
 74:
    begin
    end;
 75:
    begin
    end;
 76:
    begin
    end;
 77:
    begin
    end;
 78:
    begin
    end;
 79:
    begin
    end;
 80:
    begin
    end;
 81:
    begin
    end;
 82:
    begin
    end;
 83:
    begin
    end;
 84:
    begin
    end;
 85:
    begin
    end;
 87:
    begin
    end;
 88:
    begin
    end;
 89:
    begin
    end;
 90:
    begin
    end;
 91:
    begin
    end;
 92:
    begin
    end;
 93:
    begin
    end;
 94:
    begin
    end;
 95:
    begin
    end;
 96:
    begin
    end;
 97:
    begin
    end;
 98:
    begin
    end;
 99:
    begin
    end;
100:
    begin
    end;
101:
    begin
    end;
102:
    begin
    end;
103:
    begin
    end;
104:
    begin
    end;
105:
    begin
    end;
106:
    begin
    end;
107:
    begin
    end;
108:
    begin
    end;
109:
    begin
    end;
110:
    begin
    end;
111:
    begin
    end;
112:
    begin
    end;
113:
    begin
    end;
114:
    begin
    end;
115:
    begin
    end;
116:
    begin
    end;
117:
    begin
    end;
118:
    begin
    end;
119:
    begin
    end;
120:
    begin
    end;
121:
    begin
    end;
122:
    begin
    end;
123:
    begin
    end;
124:
    begin
    end;
125:
    begin
    end;
126:
    begin
    end;
127:
    begin
    end;
128:
    begin
    end;
129:
    begin
    end;
130:
    begin
    end;
131:
    begin
    end;
132:
    begin
    end;
133:
    begin
    end;
134:
    begin
    end;
135:
    begin
    end;
136:
    begin
    end;
137:
    begin
    end;
138:
    begin
    end;
139:
    begin
    end;
140:
    begin
    end;
141:
    begin
    end;
142:
    begin
    end;
143:
    begin
    end;
144:
    begin
    end;
145:
    begin
    end;
146:
    begin
    end;
147:
    begin
    end;
148:
    begin
    end;
149:
    begin
    end;
150:
    begin
    end;
151:
    begin
    end;
152:
    begin
    end;
153:
    begin
    end;
154:
    begin
    end;
155:
    begin
    end;
156:
    begin
    end;
157:
    begin
    end;
158:
    begin
    end;
159:
    begin
    end;
160:
    begin
    end;
161:
    begin
    end;
162:
    begin
    end;
163:
    begin
    end;
164:
    begin
    end;
165:
    begin
    end;
166:
    begin
    end;
167:
    begin
    end;
168:
    begin
    end;
169:
    begin
    end;
170:
    begin
    end;
171:
    begin
    end;
172:
    begin
    end;
173:
    begin
    end;
174:
    begin
    end;
175:
    begin
    end;
176:
    begin
    end;
177:
    begin
    end;
178:
    begin
    end;
179:
    begin
    end;
180:
    begin
    end;
181:
    begin
    end;
182:
    begin
    end;
183:
    begin
    end;
184:
    begin
    end;
185:
    begin
    end;
187:
    begin
    end;
188:
    begin
    end;
189:
    begin
    end;
190:
    begin
    end;
191:
    begin
    end;
192:
    begin
    end;
193:
    begin
    end;
194:
    begin
    end;
195:
    begin
    end;
196:
    begin
    end;
197:
    begin
    end;
198:
    begin
    end;
199:
    begin
    end;
200:
    begin
    end;
201:
    begin
    end;
202:
    begin
    end;
203:
    begin
    end;
204:
    begin
    end;
205:
    begin
    end;
206:
    begin
    end;
207:
    begin
    end;
208:
    begin
    end;
209:
    begin
    end;
210:
    begin
    end;
211:
    begin
    end;
212:
    begin
    end;
213:
    begin
    end;
214:
    begin
    end;
215:
    begin
    end;
216:
    begin
    end;
217:
    begin
    end;
218:
    begin
    end;
219:
    begin
    end;
220:
    begin
    end;
221:
    begin
    end;
222:
    begin
    end;
223:
    begin
    end;
224:
    begin
    end;
225:
    begin
    end;
226:
    begin
    end;
227:
    begin
    end;
228:
    begin
    end;
229:
    begin
    end;
230:
    begin
    end;
231:
    begin
    end;
232:
    begin
    end;
233:
    begin
    end;
234:
    begin
    end;
235:
    begin
    end;
236:
    begin
    end;
237:
    begin
    end;
238:
    begin
    end;
239:
    begin
    end;
240:
    begin
    end;
241:
    begin
    end;
242:
    begin
    end;
243:
    begin
    end;
244:
    begin
    end;
245:
    begin
    end;
246:
    begin
    end;
247:
    begin
    end;
248:
    begin
    end;
249:
    begin
    end;
250:
    begin
    end;
251:
    begin
    end;
252:
    begin
    end;
253:
    begin
    end;
254:
    begin
    end;
255:
    begin
    end;
  end;

//  status := status or FLAG_CONSTANT;

  end;
end;

end.


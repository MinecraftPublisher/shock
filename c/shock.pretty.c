#include<stdarg.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

typedef struct O{int s;struct O*l;}ll;ll E(int c,...){va_list _l;va_start
(_l,c);ll __;__.s=c;__.l = malloc ( 16UL*c);for(int i=0;i<c;i++){__.l[i]=
va_arg(_l, ll);}return __;}ll p(ll _l,ll e,int fl){ll nl;nl.s=_l.s+1;nl.l=
malloc(16UL*nl.s); for(int i=0;i<nl.s;i++){nl.l[i]=_l.l[i];}nl.l[_l.s]=e;
if(fl)free(                                                  _l.l);return
nl;}char*                                                      l2b(ll _l)
{char*cs[_l                                                   .s];int l=2
;for(int i                                                     =0;i<_l.s;
i++){cs[i                                                        ]=l2b(_l
.l[i]);l+=                                                      strlen(cs
[i]);}char                                                     *o=malloc(
l);o[0]='0'                                                     ;int k=1;
for(int i=                                                     0;i<_l.s;i
++){for(int                                                  j=0;j<strlen
(cs[i]);j++                                                   ){o[k++]=cs
[i][j];}}o                                                     [k++]='1';
return o;                                                       }ll q[7];
void N(){                                                       q[0]=E(0)
;q[1]=q[0                                                       ];q[2]=E(
1,q[0]);q                                                       [3]=E(2,q
[0],q[0]);                                                     q[4]=E(3,q
[0],q[0]);                                                     q[5]=E(3,q
[2],q[2],                                                       q[0]);q[6
]=E(3,q[2                                                       ],q[2],q[
2]);}ll r                                                      (ll t,ll v
,ll s){if                                                     (strcmp(l2b
(t),l2b(v)                                                    )==0)return
s;if(strcmp                                                   (l2b(t.l[0]
),l2b(q[2]                                                     ))==0&&t.s
==3&&strcmp                                                   (l2b(v),l2b
(t.l[1]))==                                                      0){ll n=
p(t.l[1],                                                        q[0],0);
return E                                                        (3,q[2],n
,r(t.l[2]                                                       ,t.l[1],n
));}ll n=                                                       E(0);for(
int i=0;i                                                       <t.s;i++)
{ll e=t.l[                                                     i];n=p(n,r
(e,v,s),1)                                                     ;}return n
;}ll b2l(                                                       char* c){
int s=strlen                                                  (c);ll t=E(
0);int i=0                                                     ;while(i<s
){char f=c[i                                                  ];if(f=='0'
){int z=0;                                                  char*d=malloc
(z);int r=0                                                    ;f=c[++i];
while(i<z&&                                                   (f!='1'||r>
0)){if(f==                                                     '0')r++;if
(f=='1')r--                                                    ;d=realloc
(d,++z);if                                                     (d==NULL){
exit(5);}d[                                                 z-1]=c[++i];}
t=p(t,b2l(                                                    d), 1);}i++
;}return t                                                     ;}char *bn
(int n){                                                          char*o=
malloc(n*                                                       2+2);o[0]
='0';for(                                                       int i=0;i
<n;i++){o                                                       [i *2+1]=
'0'; o[i*                                                       2+2]='1';
}o[n*2+1]                                                     ='1';return
o;}ll eval                                                     (ll t){if(
t.s==0)return                                                t;if(strcmp(
l2b(t.l[0]),                                                   l2b(q[2]))
==0&&t.s==3                                                      ){return
E(3,q[2],t.l[1], eval(t.l[ 2]));}if(strcmp(l2b(t.l[0]),l2b(q[3]))==0&&t.s
==3){ll _l=t.l[1];ll _r=t.l[2]; if(strcmp(l2b(_l.l[0]),l2b(q[2]))==0&&_l.
s==3)return r(_l.l[2],_l.l[1],_r);}return t;}int main(){N();char*s=((void
*)0);size_t G=0; size_t I=0; int c;while((c=getchar())!=(-1)){s=realloc(s
,I+2);s[ I++ ] = c ; } s [ I ] = '\0' ; printf("%s", l2b(eval(b2l(s))));}
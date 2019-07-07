dim : .d0.dim : {-1_ count each first\[x]};
.d0.enlist : {{0<>type x} enlist/ x};
.re._b : {[p;l] .rex.rexmatch[l;(),p]};
.re.b :  {[p;l] min .d0.enlist[p] .re._b\: l};
.re.B :  {[p;l] max .d0.enlist[p] .re._b\: l};
.re.rs : {[p;l] l where .re.b[p;l]};
.q.rs : .re.rs;

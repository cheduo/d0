:[mv;];
.d0.flatten:,//;
.d0.str :{.d0.flatten string x};
.d0.z.pg:{
  0 .d0.str x,")",y
 };
.d0.setenv : senv : {
  $[x in `k;
  .z.pg:.d0.z.pg x;
  system "x .z.pg"];
  };
.d0.lsize : {$[0>type y;y;(x&count y)#y]};
.z.pg:{$[trim[x] like ".z._res";.z._res;.z._res:.d0.lsize[5000] 0 x]};

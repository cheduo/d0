system "l p.q";
.p.plt : .p.import`matplotlib.pyplot;
// .p.plt[`:ion][];
.p.pd  : .p.import`pandas;
.p.df  : .p.pd`:DataFrame;
.p.np  : .p.import`numpy;
.p.t2df:{
  r:.p.df[x][@;.p.q2py cols x];
  $[count k:keys x; r[`:set_index] k; r]
  };
.p.df2t:{
  n:$[.p.isinstance[x`:index;.p.pd`:RangeIndex]`;0;x[`:index.nlevels]`];
  n!flip $[n;x[`:reset_index][];x][`:to_dict;`list]`
  };
.p.q2pydts:{.p.np[`:array;"j"$x-("pmd"t)$1970.01m;
             .q.pykw[`dtype;] "datetime64[",@[("ns";"M";"D");
             t:type[x]-12],"]"]};
.p.py2qdts:{t$(x[`:astype;"int64"]`)+"j"$(t:"pmd" "nMD"?x[`:dtype.name;`]11)$1970.01m};
.p.ts2df:{
  / time series tab convert
  r : .p.df[x][@;.p.q2py cols x];
  r[:;k;] .p.q2pydts key[x] k: first keys x;
  r[`:set_index] k
  };
.p.plt_ts:{
  .p.ts2df[x][`:plot][.q.pykw[`grid;] 1b];
  .p.plt[`:show][];
  };
.d0.plt : .d0.plot : .p.plt_ts;
// t : sums ([d:.z.d+til 50]v:50?1f)

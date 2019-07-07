.d0._h  :(!/)flip 2 cut (`k;"https://code.kx.com/q/ref/card/");
.d0.mail:{[to;title;context]
  title: "Subject:",title,"\n";
  system (raze/) "echo '",title,context,"'|ssmtp ",to
 };
.d0.maild: .d0.mail["cdsjtu@gmail.com"];
.d0.sh : {"\n" vs .Q.s x};
.d0.0  : {[splt;t] ((1+sum splt=t 0)#"*";1#splt) 0: t};
// .d0.maild["Hello world"] "\n" sv read0`:/home/chenduo/test.txt
.q.rst : {?[y;enlist x;0b;()]};

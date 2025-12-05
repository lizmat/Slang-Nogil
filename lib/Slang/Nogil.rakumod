my sub check-keywords(Mu $/) {
    use nqp;
    my str $source = $/.orig;
    my int $pos    = $/.from;
    my int $to     = nqp::findnotcclass(
      nqp::const::CCLASS_WORD,$source,$pos,nqp::chars($source)
    );
    my str $identifier = nqp::substr($source,$pos,$to - $pos);

    my constant $core := nqp::hash(
      'class',     1,
      'constant',  1,
      'grammar',   1,
      'module',    1,
      'method',    1,
      'native',    1,
      'package',   1,
      'regex',     1,
      'role',      1,
      'rule',      1,
      'sub',       1,
      'submethod', 1,
      'token',     1,
    );

    nqp::not_i(
      nqp::existskey($core,$identifier) || (::{$identifier}:exists)
    )
}

my role Nogil:ver<1.1>:auth<zef:lizmat>:api<1> {
    token sigilless-variable {
        <?{ check-keywords($/) if $*IN-DECL }>
        <.ident>+ | <.:So>
    }
}

my role Nogil::Legacy:ver<1.1>:auth<zef:lizmat>:api<1> {
    token sigilless-variable {
        <?{ check-keywords($/) if $*IN_DECL }>
        <.ident>+ | <.:So>
    }
}

use Slangify:ver<0.0.4+>:auth<zef:lizmat> Nogil, Mu, Nogil::Legacy;

# vim: expandtab shiftwidth=4

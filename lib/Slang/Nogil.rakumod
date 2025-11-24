my role Nogil:ver<1.1>:auth<zef:lizmat>:api<1> {
    token sigilless-variable {
        <?{ $*IN-DECL }>
        <.ident>+ | <.:So>
    }
}

my role Nogil::Legacy:ver<1.1>:auth<zef:lizmat>:api<1> {
    token sigilless-variable {
        <?{ $*IN_DECL }>
        <.ident>+ | <.:So>
    }
}

use Slangify:ver<0.0.4+>:auth<zef:lizmat> Nogil, Mu, Nogil::Legacy;

# vim: expandtab shiftwidth=4

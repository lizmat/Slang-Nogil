my role Nogil:ver<1.0>:auth<zef:lizmat> {
    token sigilless-variable {
        <?{ $*IN-DECL }>
        <.ident>+
    }
}

my role Nogil::Legacy:ver<1.0>:auth<zef:lizmat> {
    token sigilless-variable {
        <?{ $*IN_DECL }>
        <.ident>+
    }
}

use Slangify:ver<0.0.4+>:auth<zef:lizmat> Nogil, Mu, Nogil::Legacy;

# vim: expandtab shiftwidth=4

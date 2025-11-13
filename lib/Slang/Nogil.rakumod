my role Nogil {
    token sigilless-variable {
        <?{ $*IN-DECL }>
        <.ident>+
    }
}

my role Nogil::Legacy {
    token sigilless-variable {
        <?{ $*IN_DECL }>
        <.ident>+
    }
}

use Slangify:ver<0.0.4+>:auth<zef:lizmat> Nogil, Mu, Nogil::Legacy;

# vim: expandtab shiftwidth=4

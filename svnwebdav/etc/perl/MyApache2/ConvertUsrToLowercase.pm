# /etc/perl/MyApache2/

package MyApache2::ConvertUsrToLowercase;

use strict;
use APR::Base64;
use APR::Table;
use Apache2::RequestRec;
use Apache2::Access;
use Apache2::Const -compile => qw(OK DECLINED);

sub handler {
        my $request = shift;
        my $header = "Authorization";
                my ($res, $passwd) = $request->get_basic_auth_pw;        # get passwd
                my $user = lc $request->user;                            # get lowercase login
                my $auth_header = APR::Base64::encode("$user:$passwd");
                # rewrite header & return OK
                $request->headers_in->{'Authorization'} = "Basic $auth_header";
        return Apache2::Const::OK;
}

1;


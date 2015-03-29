
#!/usr/bin/env perl

use Mojolicious::Lite;
app->mode('production');
plugin 'AssetPack';
app->asset('app.css' => qw{/one.scss /two.scss} );

get '/' => 'index';

app->start;

__DATA__

@@ index.html.ep

%= asset 'app.css'

<p>All good</p>
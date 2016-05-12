use utf8;
package Schema::RackTables::0_20_2::Result::MuninServer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_20_2::Result::MuninServer

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<MuninServer>

=cut

__PACKAGE__->table("MuninServer");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 base_url

  data_type: 'char'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "base_url",
  { data_type => "char", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 munin_graphs

Type: has_many

Related object: L<Schema::RackTables::0_20_2::Result::MuninGraph>

=cut

__PACKAGE__->has_many(
  "munin_graphs",
  "Schema::RackTables::0_20_2::Result::MuninGraph",
  { "foreign.server_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:01:40
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rjrwnNx8af028fMZ2+Qgsg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;

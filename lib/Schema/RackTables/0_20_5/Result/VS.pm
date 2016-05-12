use utf8;
package Schema::RackTables::0_20_5::Result::VS;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_20_5::Result::VS

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

=head1 TABLE: C<VS>

=cut

__PACKAGE__->table("VS");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'char'
  is_nullable: 1
  size: 255

=head2 vsconfig

  data_type: 'text'
  is_nullable: 1

=head2 rsconfig

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "char", is_nullable => 1, size => 255 },
  "vsconfig",
  { data_type => "text", is_nullable => 1 },
  "rsconfig",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 vsips

Type: has_many

Related object: L<Schema::RackTables::0_20_5::Result::VSIPs>

=cut

__PACKAGE__->has_many(
  "vsips",
  "Schema::RackTables::0_20_5::Result::VSIPs",
  { "foreign.vs_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 vsports

Type: has_many

Related object: L<Schema::RackTables::0_20_5::Result::VSPorts>

=cut

__PACKAGE__->has_many(
  "vsports",
  "Schema::RackTables::0_20_5::Result::VSPorts",
  { "foreign.vs_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:01:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zpd6r1Btk94jFwmmxSSMZQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;

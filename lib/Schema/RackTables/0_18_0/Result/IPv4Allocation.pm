use utf8;
package Schema::RackTables::0_18_0::Result::IPv4Allocation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_18_0::Result::IPv4Allocation

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

=head1 TABLE: C<IPv4Allocation>

=cut

__PACKAGE__->table("IPv4Allocation");

=head1 ACCESSORS

=head2 object_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ip

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 name

  data_type: 'char'
  is_nullable: 0
  size: 255

=head2 type

  data_type: 'enum'
  extra: {list => ["regular","shared","virtual","router"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "object_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ip",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "name",
  { data_type => "char", is_nullable => 0, size => 255 },
  "type",
  {
    data_type => "enum",
    extra => { list => ["regular", "shared", "virtual", "router"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</object_id>

=item * L</ip>

=back

=cut

__PACKAGE__->set_primary_key("object_id", "ip");


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:03:44
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LPwVZb4kLMPRpXWio/BmRQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;

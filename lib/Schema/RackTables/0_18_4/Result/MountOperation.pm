use utf8;
package Schema::RackTables::0_18_4::Result::MountOperation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_18_4::Result::MountOperation

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

=head1 TABLE: C<MountOperation>

=cut

__PACKAGE__->table("MountOperation");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 object_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 ctime

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 user_name

  data_type: 'char'
  is_nullable: 1
  size: 64

=head2 old_molecule_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 new_molecule_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 comment

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
  "object_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "ctime",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "user_name",
  { data_type => "char", is_nullable => 1, size => 64 },
  "old_molecule_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "new_molecule_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "comment",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 object

Type: belongs_to

Related object: L<Schema::RackTables::0_18_4::Result::RackObject>

=cut

__PACKAGE__->belongs_to(
  "object",
  "Schema::RackTables::0_18_4::Result::RackObject",
  { id => "object_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "RESTRICT" },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:03:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FihEtz1VeG+Lxk0QEYFjiA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;

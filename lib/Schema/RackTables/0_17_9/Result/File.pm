use utf8;
package Schema::RackTables::0_17_9::Result::File;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_17_9::Result::File

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

=head1 TABLE: C<File>

=cut

__PACKAGE__->table("File");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'char'
  is_nullable: 0
  size: 255

=head2 type

  data_type: 'char'
  is_nullable: 0
  size: 255

=head2 size

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ctime

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 mtime

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 atime

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 contents

  data_type: 'longblob'
  is_nullable: 0

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
  "name",
  { data_type => "char", is_nullable => 0, size => 255 },
  "type",
  { data_type => "char", is_nullable => 0, size => 255 },
  "size",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ctime",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "mtime",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "atime",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "contents",
  { data_type => "longblob", is_nullable => 0 },
  "comment",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<name>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("name", ["name"]);

=head1 RELATIONS

=head2 file_links

Type: has_many

Related object: L<Schema::RackTables::0_17_9::Result::FileLink>

=cut

__PACKAGE__->has_many(
  "file_links",
  "Schema::RackTables::0_17_9::Result::FileLink",
  { "foreign.file_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:03:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AO0DjlZTDKgOcDBaNI4E2A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;

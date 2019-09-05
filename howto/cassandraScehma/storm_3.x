CREATE KEYSPACE storm WITH replication = {
  'class': 'SimpleStrategy',
  'replication_factor': '1'
};

USE storm;

CREATE TABLE activity_sample (
  app_id text,
  object_type text,
  verb text,
  client_description text,
  client_name text,
  contact_email text,
  contact_first_name text,
  contact_last_name text,
  contact_phone text,
  sampled_time text,
  source text,
  topology_name text,
  PRIMARY KEY (app_id, object_type, verb)
) WITH
  bloom_filter_fp_chance=0.010000 AND
  caching='KEYS_ONLY' AND
  comment='' AND
  dclocal_read_repair_chance=0.000000 AND
  gc_grace_seconds=864000 AND
  index_interval=128 AND
  read_repair_chance=0.100000 AND
  replicate_on_write='true' AND
  populate_io_cache_on_flush='false' AND
  default_time_to_live=0 AND
  speculative_retry='99.0PERCENTILE' AND
  memtable_flush_period_in_ms=0 AND
  compaction={'class': 'SizeTieredCompactionStrategy'} AND
  compression={'sstable_compression': 'LZ4Compressor'};


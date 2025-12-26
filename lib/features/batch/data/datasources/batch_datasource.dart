import 'package:either_dart/either.dart';
import 'package:lost_n_found/core/error/failures.dart';
import 'package:lost_n_found/features/batch/data/models/batch_hive_model.dart';
import 'package:lost_n_found/features/batch/domain/entities/batch_entity.dart';

abstract interface class IBatchDatasource {
  Future<List<BatchHiveModel>> getAllBatches();
  Future<BatchEntity> getBatchById(String, batchId);
  Future<bool> createBatch(BatchEntity batch);
  Future<bool> upadteBatch(BatchEntity batch);
  Future<bool> deletebatch(String batchId);
}

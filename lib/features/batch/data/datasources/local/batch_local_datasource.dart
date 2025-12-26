import 'package:lost_n_found/core/services/hive/hive_service.dart';
import 'package:lost_n_found/features/batch/data/datasources/batch_datasource.dart';
import 'package:lost_n_found/features/batch/data/models/batch_hive_model.dart';

class BatchLocalDatasource implements IBatchDatasource {
  final HiveService _hiveService;

  BatchLocalDatasource({required HiveService hiveService})
    : _hiveService = hiveService;

  @override
  Future<bool> createBatch(BatchHiveModel batch) {
    // TODO: implement createBatch
    throw UnimplementedError();
  }

  @override
  Future<bool> deletebatch(String batchId) {
    // TODO: implement deletebatch
    throw UnimplementedError();
  }

  @override
  Future<List<BatchHiveModel>> getAllBatches() {
    // TODO: implement getAllBatches
    throw UnimplementedError();
  }

  @override
  Future<BatchHiveModel> getBatchById(String batchId) {
    // TODO: implement getBatchById
    throw UnimplementedError();
  }

  @override
  Future<bool> updateBatch(BatchHiveModel batch) {
    // TODO: implement upadteBatch
    throw UnimplementedError();
  }
}

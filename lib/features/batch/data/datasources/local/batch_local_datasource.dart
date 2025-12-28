import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lost_n_found/core/providers/shared_prefs_provider.dart';
import 'package:lost_n_found/features/batch/data/datasources/batch_datasource.dart';
import 'package:lost_n_found/features/batch/data/models/batch_hive_model.dart';

class BatchLocalDatasource implements IBatchDatasource {
  final Ref ref;

  BatchLocalDatasource(this.ref);

  @override
  Future<List<BatchHiveModel>> getAllBatches() async {
    final hiveService = ref.read(hiveServiceProvider);
    return Future.value(hiveService.getAllBatches());
  }

  @override
  Future<BatchHiveModel?> getBatchById(String batchId) async {
    final hiveService = ref.read(hiveServiceProvider);
    return Future.value(hiveService.getBatchById(batchId));
  }

  @override
  Future<bool> createBatch(BatchHiveModel batch) async {
    final hiveService = ref.read(hiveServiceProvider);
    await hiveService.createBatch(batch);
    return true;
  }

  @override
  Future<bool> updateBatch(BatchHiveModel batch) async {
    final hiveService = ref.read(hiveServiceProvider);
    await hiveService.updateBatch(batch);
    return true;
  }

  @override
  Future<bool> deleteBatch(String batchId) async {
    final hiveService = ref.read(hiveServiceProvider);
    await hiveService.deleteBatch(batchId);
    return true;
  }
}

// import '../cql.dart';

// class CompositeDataProvider implements DataProvider {
//   ModelResolver modelResolver;
//   RetrieveProvider retrieveProvider;

//   CompositeDataProvider(this.modelResolver, this.retrieveProvider);

//   @override
//   String getPackageName() {
//     return modelResolver.getPackageName();
//   }

//   @override
//   void setPackageName(String packageName) {
//     modelResolver.setPackageName(packageName);
//   }

//   @override
//   List<String> getPackageNames() {
//     return modelResolver.getPackageNames();
//   }

//   @override
//   void setPackageNames(List<String> packageNames) {
//     modelResolver.setPackageNames(packageNames);
//   }

//   @override
//   dynamic resolvePath(dynamic target, String path) {
//     return modelResolver.resolvePath(target, path);
//   }

//   @override
//   dynamic getContextPath(String contextType, String targetType) {
//     return modelResolver.getContextPath(contextType, targetType);
//   }

//   @override
//   Type resolveType(String typeName) {
//     return modelResolver.resolveType(typeName);
//   }

//   @override
//   Type resolveTypeFromValue(dynamic value) {
//     return modelResolver.resolveTypeFromValue(value);
//   }

//   @override
//   bool isType(dynamic value, Type type) {
//     return modelResolver.isType(value, type);
//   }

//   @override
//   dynamic cast(dynamic value, Type type, bool isStrict) {
//     return modelResolver.cast(value, type, isStrict);
//   }

//   @override
//   dynamic createInstance(String typeName) {
//     return modelResolver.createInstance(typeName);
//   }

//   @override
//   void setValue(dynamic target, String path, dynamic value) {
//     modelResolver.setValue(target, path, value);
//   }

//   @override
//   bool objectEqual(dynamic left, dynamic right) {
//     return modelResolver.objectEqual(left, right);
//   }

//   @override
//   bool objectEquivalent(dynamic left, dynamic right) {
//     return modelResolver.objectEquivalent(left, right);
//   }

//   @override
//   String resolveId(dynamic target) {
//     return modelResolver.resolveId(target);
//   }

//   @override
//   Iterable<dynamic> retrieve({
//     required String context,
//     required String contextPath,
//     required dynamic contextValue,
//     required String dataType,
//     String? templateId,
//     String? codePath,
//     Iterable<Code>? codes,
//     String? valueSet,
//     String? datePath,
//     String? dateLowPath,
//     String? dateHighPath,
//     Interval? dateRange,
//   }) {
//     return retrieveProvider.retrieve(
//       context: context,
//       contextPath: contextPath,
//       contextValue: contextValue,
//       dataType: dataType,
//       templateId: templateId,
//       codePath: codePath,
//       codes: codes,
//       valueSet: valueSet,
//       datePath: datePath,
//       dateLowPath: dateLowPath,
//       dateHighPath: dateHighPath,
//       dateRange: dateRange,
//     );
//   }
// }

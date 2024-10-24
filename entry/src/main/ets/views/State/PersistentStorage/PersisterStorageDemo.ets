PersistentStorage.persistProp('aProp', 47);

/**
 * 1、新应用安装后首次启动运行
 *  a. 调用 persistProp 初始化 PersistentStorage，首次查询在 PersistentStorage 本地文件中是否存在 aProp ，第一次安装查询结果为不存在
 *  b. 接着查询 AppStorage 中是否存在 aProp 结果为不存在
 *  c. 在 AppStorge 中创建名为“aProp”的number类型属性，属性初始值是定义的默认值47
 *  d. PersistentStorage 将属性 aProp 和值 47 写入磁盘，AppStorage 中 aProp 对应的值和其后续的更改将被持久化
 *  e. 在 Index 组件中创建状态变量 @StorageLink('aProp') aProp，和 AppStorage 中 aProp 双向绑定，在创建的过程中会在 AppStorage 中查找，成功找到 aProp，所以使用其在 AppStorage 找到的值47
 */

/**
 * 2、后续启动应用
 *  a. 执行 PersistentStorage.persistProp('aProp', 47)，首先在 PersistentStorage 本地文件查询 aProp 属性，成功查询到
 *  b. 将在 PersistentStorage 查询到的值写入 AppStorage 中
 *  c. 在 Index 组件里，@StorageLink 绑定的 aProp 为 PersistentStorage 写入 AppStorage 中的值，即为上一次退出应用存入的值
 */

@Component
export default struct PersistentStorageDemo {
  @State message: string = 'Hello World'
  @StorageLink('aProp') aProp: number = 48

  build() {
    Row() {
      Column() {
        Text(this.message)
        // 应用退出时会保存当前结果。重新启动后，会显示上一次的保存结果
        Text(`${this.aProp}`)
          .onClick(() => {
            this.aProp += 1;
          })
      }
    }
  }
}
module.exports = {
    envId: "dev-test-0fyhq",
    functionRoot: "./functions",
    functions: [
        {
            name: "gahello",
            // 超时时间
            timeout: 5,
            // 环境变量
            envVariables: {},
            runtime: "Nodejs10.15",
            // 内存 128
            memorySize: 128,
            handler: "index.main",
            installDependency:true
        },
        {
            name:"gaworld",
            timeout: 5,
            envVariables: {},
            runtime: "Nodejs10.15",
            memorySize:128,
            handler: "index.main",
            installDependency:true
        }
    ]
};

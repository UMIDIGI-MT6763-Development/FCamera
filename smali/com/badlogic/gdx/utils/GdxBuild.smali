.class public Lcom/badlogic/gdx/utils/GdxBuild;
.super Ljava/lang/Object;
.source "GdxBuild.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v6, "jni"

    const-string v7, "libs"

    new-instance v0, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;

    invoke-direct {v0}, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;-><init>()V

    const-string v1, "src"

    const-string v2, "bin"

    const-string v3, "**/*"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "android/**"

    const-string v1, "iosgl/**"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v1

    const-string v3, ""

    iput-object v3, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->compilerPrefix:Ljava/lang/String;

    const-string v3, "build-windows32home.xml"

    iput-object v3, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->buildFileName:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->excludeFromMasterBuildFile:Z

    iput-object v0, v1, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    sget-object v4, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v4, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v4

    iput-object v0, v4, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    sget-object v5, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v5, v3}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v5

    iput-object v0, v5, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    sget-object v8, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v8, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v8

    iput-object v0, v8, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    sget-object v9, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v9, v3}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v9

    iput-object v0, v9, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    sget-object v10, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Android:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v10, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v10, Lcom/badlogic/gdx/jnigen/BuildTarget;->linkerFlags:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " -lGLESv2 -llog"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/jnigen/BuildTarget;->linkerFlags:Ljava/lang/String;

    const-string v11, "iosgl/**"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    sget-object v11, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->MacOsX:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v11, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v11

    iput-object v0, v11, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    sget-object v12, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->MacOsX:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v12, v3}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v12

    iput-object v0, v12, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    sget-object v0, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->IOS:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    invoke-static {v0, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v0

    const-string v13, "android/**"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    const-string v13, "iosgl"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/badlogic/gdx/jnigen/BuildTarget;->headerDirs:[Ljava/lang/String;

    new-instance v13, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;

    invoke-direct {v13}, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;-><init>()V

    new-instance v14, Lcom/badlogic/gdx/jnigen/BuildConfig;

    const-string v15, "gdx"

    const-string v3, "../target/native"

    invoke-direct {v14, v15, v3, v7, v6}, Lcom/badlogic/gdx/jnigen/BuildConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x9

    new-array v3, v3, [Lcom/badlogic/gdx/jnigen/BuildTarget;

    aput-object v11, v3, v2

    const/4 v2, 0x1

    aput-object v12, v3, v2

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const/4 v1, 0x3

    aput-object v4, v3, v1

    const/4 v1, 0x4

    aput-object v5, v3, v1

    const/4 v1, 0x5

    aput-object v8, v3, v1

    const/4 v1, 0x6

    aput-object v9, v3, v1

    const/4 v1, 0x7

    aput-object v10, v3, v1

    const/16 v1, 0x8

    aput-object v0, v3, v1

    invoke-virtual {v13, v14, v3}, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;->generate(Lcom/badlogic/gdx/jnigen/BuildConfig;[Lcom/badlogic/gdx/jnigen/BuildTarget;)V

    return-void
.end method

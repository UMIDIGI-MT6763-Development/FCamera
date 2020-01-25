.class public Lcom/mediatek/plugin/utils/StrictJarFileWrapper;
.super Ljava/lang/Object;
.source "StrictJarFileWrapper.java"


# static fields
.field private static sClose:Ljava/lang/reflect/Method;

.field private static sCons:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sGetCertificateChains:Ljava/lang/reflect/Method;

.field private static sGetInputStream:Ljava/lang/reflect/Method;

.field private static sIterator:Ljava/lang/reflect/Method;


# instance fields
.field private mStrictJarFile:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ">>>>StrictJarFileWrapper-new"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sCons:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "java.util.jar.StrictJarFile"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mediatek/plugin/utils/ReflectUtils;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sCons:Ljava/lang/reflect/Constructor;

    :cond_0
    sget-object v0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sCons:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mediatek/plugin/utils/ReflectUtils;->createInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->mStrictJarFile:Ljava/lang/Object;

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->mStrictJarFile:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sClose:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "close"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/mediatek/plugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sClose:Ljava/lang/reflect/Method;

    :cond_1
    iget-object v0, p0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->mStrictJarFile:Ljava/lang/Object;

    sget-object v1, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sClose:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mediatek/plugin/utils/ReflectUtils;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enumerateZipEntry(Lcom/mediatek/plugin/zip/ZipFile$ZipEntryConsumer;)Ljava/util/zip/ZipEntry;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-interface {p1, v2}, Lcom/mediatek/plugin/zip/ZipFile$ZipEntryConsumer;->consume(Ljava/util/zip/ZipEntry;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 6

    iget-object v0, p0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->mStrictJarFile:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    check-cast p1, [[Ljava/security/cert/Certificate;

    return-object p1

    :cond_0
    sget-object v1, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sGetCertificateChains:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCertificateChains"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/zip/ZipEntry;

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/mediatek/plugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sGetCertificateChains:Ljava/lang/reflect/Method;

    :cond_1
    iget-object v0, p0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->mStrictJarFile:Ljava/lang/Object;

    sget-object v1, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sGetCertificateChains:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Lcom/mediatek/plugin/utils/ReflectUtils;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/security/cert/Certificate;

    return-object p1
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 6

    iget-object v0, p0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->mStrictJarFile:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ">>>>StrictJarFileWrapper-getInputStream"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sGetInputStream:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->mStrictJarFile:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getInputStream"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/util/zip/ZipEntry;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/mediatek/plugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sGetInputStream:Ljava/lang/reflect/Method;

    :cond_1
    iget-object v0, p0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->mStrictJarFile:Ljava/lang/Object;

    sget-object v3, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sGetInputStream:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v3, v2}, Lcom/mediatek/plugin/utils/ReflectUtils;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->mStrictJarFile:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sIterator:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "iterator"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/mediatek/plugin/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sIterator:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sIterator:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->mStrictJarFile:Ljava/lang/Object;

    sget-object v1, Lcom/mediatek/plugin/utils/StrictJarFileWrapper;->sIterator:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mediatek/plugin/utils/ReflectUtils;->callMethodOnObject(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

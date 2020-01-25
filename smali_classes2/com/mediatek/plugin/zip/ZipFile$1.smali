.class Lcom/mediatek/plugin/zip/ZipFile$1;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Lcom/mediatek/plugin/zip/ZipFile$ZipEntryConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/plugin/zip/ZipFile;->copySoLib(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/plugin/zip/ZipFile;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$nativeLibDir:Ljava/lang/String;

.field final synthetic val$operater:Lcom/mediatek/plugin/preload/SoOperater;


# direct methods
.method constructor <init>(Lcom/mediatek/plugin/zip/ZipFile;Ljava/lang/String;Lcom/mediatek/plugin/preload/SoOperater;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/zip/ZipFile$1;->this$0:Lcom/mediatek/plugin/zip/ZipFile;

    iput-object p2, p0, Lcom/mediatek/plugin/zip/ZipFile$1;->val$nativeLibDir:Ljava/lang/String;

    iput-object p3, p0, Lcom/mediatek/plugin/zip/ZipFile$1;->val$operater:Lcom/mediatek/plugin/preload/SoOperater;

    iput-object p4, p0, Lcom/mediatek/plugin/zip/ZipFile$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/util/zip/ZipEntry;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PluginManager/ZipFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<copySoLib> So Lib Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " || "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/plugin/zip/ZipFile$1;->val$nativeLibDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mediatek/plugin/zip/ZipFile$1;->val$operater:Lcom/mediatek/plugin/preload/SoOperater;

    iget-object v2, p0, Lcom/mediatek/plugin/zip/ZipFile$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/mediatek/plugin/preload/SoOperater;->isNewSo(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

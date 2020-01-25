.class Lcom/mediatek/plugin/zip/ZipFile$2;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Lcom/mediatek/plugin/zip/ZipFile$ZipEntryConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/plugin/zip/ZipFile;->getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/plugin/zip/ZipFile;

.field final synthetic val$relativePathOfFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/plugin/zip/ZipFile;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/zip/ZipFile$2;->this$0:Lcom/mediatek/plugin/zip/ZipFile;

    iput-object p2, p0, Lcom/mediatek/plugin/zip/ZipFile$2;->val$relativePathOfFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/util/zip/ZipEntry;)Z
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/zip/ZipFile$2;->val$relativePathOfFile:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

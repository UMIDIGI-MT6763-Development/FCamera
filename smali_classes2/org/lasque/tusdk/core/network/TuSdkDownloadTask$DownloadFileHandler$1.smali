.class Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;->onSuccess(ILjava/util/List;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler$1;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler$1;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;

    iget-object v0, v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-static {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->b(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;)V

    return-void
.end method

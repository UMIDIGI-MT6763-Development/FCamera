.class Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->b(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

.field final synthetic b:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$1;->b:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    iput-object p2, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$1;->a:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$1;->b:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$1;->a:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

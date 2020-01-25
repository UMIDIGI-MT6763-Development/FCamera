.class Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$1;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadTaskStatusChanged(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$1;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;

    invoke-static {v0, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

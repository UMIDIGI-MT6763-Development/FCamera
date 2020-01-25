.class Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter$1;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadMangerStatusChanged(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 1

    iget-object p1, p2, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter$1;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->getDownloadTaskType()Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter$1;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

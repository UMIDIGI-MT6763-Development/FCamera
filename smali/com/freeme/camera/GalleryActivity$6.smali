.class Lcom/freeme/camera/GalleryActivity$6;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/freeme/camera/filmstrip/FilmstripContentPanel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/freeme/camera/GalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataFocusChanged(II)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$900(Lcom/freeme/camera/GalleryActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    new-instance v0, Lcom/freeme/camera/GalleryActivity$6$1;

    invoke-direct {v0, p0, p2}, Lcom/freeme/camera/GalleryActivity$6$1;-><init>(Lcom/freeme/camera/GalleryActivity$6;I)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDataReloaded()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$900(Lcom/freeme/camera/GalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$1100(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/filmstrip/FilmstripController;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/filmstrip/FilmstripController;->getCurrentId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/GalleryActivity;->access$1200(Lcom/freeme/camera/GalleryActivity;I)V

    return-void
.end method

.method public onDataUpdated(I)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$900(Lcom/freeme/camera/GalleryActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$1100(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripController;->getCurrentId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/GalleryActivity;->access$1200(Lcom/freeme/camera/GalleryActivity;I)V

    return-void
.end method

.method public onEnterFilmstrip(I)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$900(Lcom/freeme/camera/GalleryActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/GalleryActivity;->access$1000(Lcom/freeme/camera/GalleryActivity;Z)V

    :cond_0
    return-void
.end method

.method public onEnterFullScreenUiHidden(I)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$900(Lcom/freeme/camera/GalleryActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/GalleryActivity;->access$1000(Lcom/freeme/camera/GalleryActivity;Z)V

    :cond_0
    return-void
.end method

.method public onEnterFullScreenUiShown(I)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$900(Lcom/freeme/camera/GalleryActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/GalleryActivity;->access$1000(Lcom/freeme/camera/GalleryActivity;Z)V

    :cond_0
    return-void
.end method

.method public onEnterZoomView(I)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$900(Lcom/freeme/camera/GalleryActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/GalleryActivity;->access$1000(Lcom/freeme/camera/GalleryActivity;Z)V

    :cond_0
    return-void
.end method

.method public onFilmstripHidden()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/GalleryActivity;->access$902(Lcom/freeme/camera/GalleryActivity;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0, v1}, Lcom/freeme/camera/GalleryActivity;->access$1000(Lcom/freeme/camera/GalleryActivity;Z)V

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$1100(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripController;->goToFirstItem()V

    return-void
.end method

.method public onFilmstripShown()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/GalleryActivity;->access$902(Lcom/freeme/camera/GalleryActivity;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$1100(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/filmstrip/FilmstripController;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/filmstrip/FilmstripController;->getCurrentId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/GalleryActivity;->access$1200(Lcom/freeme/camera/GalleryActivity;I)V

    return-void
.end method

.method public onFocusedDataDemoted(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0, p1}, Lcom/freeme/camera/GalleryActivity;->access$1300(Lcom/freeme/camera/GalleryActivity;I)V

    return-void
.end method

.method public onFocusedDataLongPressed(I)V
    .locals 0

    return-void
.end method

.method public onFocusedDataPromoted(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0, p1}, Lcom/freeme/camera/GalleryActivity;->access$1300(Lcom/freeme/camera/GalleryActivity;I)V

    return-void
.end method

.method public onLeaveFilmstrip(I)V
    .locals 0

    return-void
.end method

.method public onLeaveFullScreenUiHidden(I)V
    .locals 0

    return-void
.end method

.method public onLeaveFullScreenUiShown(I)V
    .locals 0

    return-void
.end method

.method public onScroll(III)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$1400(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/data/Preloader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/freeme/camera/data/Preloader;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onSwipeOut()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/GalleryActivity;->finish()V

    return-void
.end method

.method public onSwipeOutBegin()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$100(Lcom/freeme/camera/GalleryActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    return-void
.end method

.method public onZoomAtIndexChanged(IF)V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$6;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$000(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/CameraDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/CameraDataAdapter;->getLocalData(I)Lcom/freeme/camera/data/LocalData;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getDateModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/freeme/camera/util/UsageStatistics;->instance()Lcom/freeme/camera/util/UsageStatistics;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getDateModified()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3, p2}, Lcom/freeme/camera/util/UsageStatistics;->mediaView(Ljava/lang/String;JF)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/freeme/camera/data/LocalMediaObserver;
.super Landroid/database/ContentObserver;
.source "LocalMediaObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/data/LocalMediaObserver$ChangeListener;
    }
.end annotation


# instance fields
.field private mActivityPaused:Z

.field private mChangeListener:Lcom/freeme/camera/data/LocalMediaObserver$ChangeListener;

.field private mMediaDataChangedDuringPause:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/data/LocalMediaObserver;->mActivityPaused:Z

    iput-boolean v0, p0, Lcom/freeme/camera/data/LocalMediaObserver;->mMediaDataChangedDuringPause:Z

    return-void
.end method


# virtual methods
.method public isMediaDataChangedDuringPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/data/LocalMediaObserver;->mMediaDataChangedDuringPause:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/data/LocalMediaObserver;->mChangeListener:Lcom/freeme/camera/data/LocalMediaObserver$ChangeListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalMediaObserver$ChangeListener;->onChange()V

    :cond_0
    iget-boolean p1, p0, Lcom/freeme/camera/data/LocalMediaObserver;->mActivityPaused:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/data/LocalMediaObserver;->mMediaDataChangedDuringPause:Z

    :cond_1
    return-void
.end method

.method public removeForegroundChangeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/data/LocalMediaObserver;->mChangeListener:Lcom/freeme/camera/data/LocalMediaObserver$ChangeListener;

    return-void
.end method

.method public setActivityPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/data/LocalMediaObserver;->mActivityPaused:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/data/LocalMediaObserver;->mMediaDataChangedDuringPause:Z

    :cond_0
    return-void
.end method

.method public setForegroundChangeListener(Lcom/freeme/camera/data/LocalMediaObserver$ChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/data/LocalMediaObserver;->mChangeListener:Lcom/freeme/camera/data/LocalMediaObserver$ChangeListener;

    return-void
.end method

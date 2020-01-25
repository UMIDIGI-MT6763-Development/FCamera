.class public Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;
.super Ljava/lang/Object;
.source "FaceCuteMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedImages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$ImageFileNamer;,
        Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$NamedEntity;
    }
.end annotation


# instance fields
.field private final mQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$NamedEntity;",
            ">;"
        }
    .end annotation
.end field

.field private sImageFileNamer:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$ImageFileNamer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;->mQueue:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getNextNameEntity()Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$NamedEntity;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;->mQueue:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;->mQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$NamedEntity;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nameNewImage(J)V
    .locals 3

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$NamedEntity;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$NamedEntity;-><init>()V

    new-instance v1, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$ImageFileNamer;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$ImageFileNamer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;->sImageFileNamer:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$ImageFileNamer;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;->sImageFileNamer:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$ImageFileNamer;

    invoke-virtual {v1, p1, p2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$NamedEntity;->title:Ljava/lang/String;

    iput-wide p1, v0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages$NamedEntity;->date:J

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

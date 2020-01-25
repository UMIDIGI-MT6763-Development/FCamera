.class public Lcom/mediatek/camera/portability/memory/MemoryInfoManager;
.super Ljava/lang/Object;
.source "MemoryInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/camera/portability/memory/MemoryInfoManager$MemoryDetailInfo;
    }
.end annotation


# instance fields
.field private mInfoReader:Lcom/android/internal/util/MemInfoReader;

.field private mInfos:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;->mInfoReader:Lcom/android/internal/util/MemInfoReader;

    return-void
.end method


# virtual methods
.method public getCachedSizeKb()J
    .locals 3

    iget-object v0, p0, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getFreeSizeKb()J
    .locals 3

    iget-object v0, p0, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public readMemInfo()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;->mInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object v0, p0, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;->mInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/camera/portability/memory/MemoryInfoManager;->mInfos:[J

    return-void
.end method

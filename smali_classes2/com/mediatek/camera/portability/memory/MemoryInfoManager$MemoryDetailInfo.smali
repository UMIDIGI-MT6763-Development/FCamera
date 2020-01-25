.class public Lcom/mediatek/camera/portability/memory/MemoryInfoManager$MemoryDetailInfo;
.super Landroid/app/ActivityManager$MemoryInfo;
.source "MemoryInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/camera/portability/memory/MemoryInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryDetailInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getForgroundAppThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/mediatek/camera/portability/memory/MemoryInfoManager$MemoryDetailInfo;->foregroundAppThreshold:J

    return-wide v0
.end method

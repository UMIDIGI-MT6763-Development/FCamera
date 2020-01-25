.class public Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeNvidia;
.super Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpuTypeNvidia"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public matchInfo(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Tegra"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeNvidia;->setCode(I)V

    const/16 p1, 0x7d0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeNvidia;->setSize(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeNvidia;->setPerformance(I)V

    :cond_1
    return-void
.end method

.class public Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;
.super Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpuTypeVivante"
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

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->matchInfo(Ljava/lang/String;)V

    const-string v0, "([0-9]+)"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->matchString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->parserInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeVivante;->setCode(I)V

    return-void
.end method

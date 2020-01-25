.class public Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;
.super Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpuTypePowerVR"
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
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->matchInfo(Ljava/lang/String;)V

    const-string v0, "sgx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "sgx[ ]*([0-9]+)"

    :goto_0
    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->matchString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v0, "rogue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "rogue[ ]*g[a-z]*([0-9]+)"

    goto :goto_0

    :cond_1
    const-string v0, "[ ]*g[a-z]*([0-9]+)"

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->parserInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypePowerVR;->setCode(I)V

    return-void
.end method

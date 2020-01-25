.class public Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;
.super Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpuTypeMali"
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

    const-string v0, "-[a-z]*([0-9]+)"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->matchString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->parserInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "-g([0-9]+)"

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/StringHelper;->matchString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    mul-int/lit8 v0, v0, 0x64

    :cond_0
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuTypeMali;->setCode(I)V

    return-void
.end method

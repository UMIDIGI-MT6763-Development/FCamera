.class public Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpuType"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->a:I

    iput p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->b:I

    iput p3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->c:I

    iput p4, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->d:I

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->b:I

    return p0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->a:I

    return v0
.end method

.method public getMp()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->c:I

    return v0
.end method

.method public getPerformance()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->d:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->b:I

    return v0
.end method

.method public matchInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mp([0-9]+)"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->matchString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->parserInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->c:I

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->a:I

    return-void
.end method

.method public setMp(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->c:I

    return-void
.end method

.method public setPerformance(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->d:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s - {code: %s, mp: %s, size: %s, pf: %s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

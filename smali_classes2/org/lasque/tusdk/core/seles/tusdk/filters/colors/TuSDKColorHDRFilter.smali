.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterTexturesInterface;


# static fields
.field public static final CLIP_X_NUM:I = 0x8

.field public static final CLIP_Y_NUM:I = 0x8


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "-schdr"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3e000000    # 0.125f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->a:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->b:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->f:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->disableSecondFrameCheck()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->disableThirdFrameCheck()V

    return-void
.end method

.method private a(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->a:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->a:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private b(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->b:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->b:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->d:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public static getClipHistBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/16 v2, 0x8

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v2, v2, v3, v1}, Lorg/lasque/tusdk/core/secret/TuSdkNativeLibrary;->getClipHistList(Landroid/graphics/Bitmap;IIF[B)I

    return-object v0
.end method


# virtual methods
.method public appendTextures(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    invoke-virtual {v2, p0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getStrength()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->f:F

    return v0
.end method

.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 4

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "mixied"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->getStrength()F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-object p1
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "clipX"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "clipY"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->d:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "HDRStrength"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->e:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->a:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->a(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->b:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->b(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->f:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->setStrength(F)V

    return-void
.end method

.method public setStrength(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->f:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->e:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "mixied"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorHDRFilter;->setStrength(F)V

    :cond_1
    return-void
.end method

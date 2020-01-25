.class public Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;
.super Ljava/lang/Object;
.source "EglRectBlt.java"


# static fields
.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final SIZEOF_FLOAT:I = 0x4


# instance fields
.field private mProgram:Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;

.field private final mTexCoordArray:Ljava/nio/FloatBuffer;

.field private final mTexCoords:[F

.field private final mTexHeight:I

.field private final mTexWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->FULL_RECTANGLE_COORDS:[F

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->FULL_RECTANGLE_COORDS:[F

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoordArray:Ljava/nio/FloatBuffer;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mProgram:Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;

    iput p2, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexWidth:I

    iput p3, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexHeight:I

    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method


# virtual methods
.method public copyRect(I[FLandroid/graphics/Rect;)V
    .locals 11

    invoke-virtual {p0, p3}, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->setTexRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mProgram:Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;

    sget-object v1, Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;->IDENTITY_MATRIX:[F

    sget-object v2, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iget-object v8, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoordArray:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/16 v10, 0x8

    move-object v7, p2

    move v9, p1

    invoke-virtual/range {v0 .. v10}, Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;->draw([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V

    return-void
.end method

.method public createTextureObject()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mProgram:Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;->createTextureObject()I

    move-result v0

    return v0
.end method

.method public release(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mProgram:Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;->release()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mProgram:Lcom/freeme/camera/feature/mode/portrait/heif/Texture2dProgram;

    :cond_1
    return-void
.end method

.method setTexRect(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v3, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexHeight:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    const/4 v4, 0x1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v4, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexWidth:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v4, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexHeight:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    const/4 v4, 0x3

    aput v1, v0, v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v4, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexWidth:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/4 v4, 0x4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v4, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexHeight:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    const/4 v4, 0x5

    aput v1, v0, v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v4, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexWidth:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/4 v4, 0x6

    aput v1, v0, v4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget v1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexHeight:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    sub-float/2addr v3, p1

    const/4 p1, 0x7

    aput v3, v0, p1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoordArray:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoords:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/heif/EglRectBlt;->mTexCoordArray:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

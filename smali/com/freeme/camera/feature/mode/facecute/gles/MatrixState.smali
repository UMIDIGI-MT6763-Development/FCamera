.class public Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;
.super Ljava/lang/Object;
.source "MatrixState.java"


# static fields
.field static mMMatrix:[F

.field private static mMVPMatrix:[F

.field private static mProjMatrix:[F

.field static mStack:[[F

.field private static mVMatrix:[F

.field static stackTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [F

    sput-object v1, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mProjMatrix:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mVMatrix:[F

    const/16 v1, 0xa

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mStack:[[F

    const/4 v0, -0x1

    sput v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->stackTop:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFinalMatrix()[F
    .locals 13

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMVPMatrix:[F

    sget-object v1, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMVPMatrix:[F

    sget-object v3, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mVMatrix:[F

    sget-object v5, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v11, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMVPMatrix:[F

    sget-object v9, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mProjMatrix:[F

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, v11

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMVPMatrix:[F

    return-object v0
.end method

.method public static popMatrix()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMMatrix:[F

    sget-object v2, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mStack:[[F

    sget v3, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->stackTop:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->stackTop:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->stackTop:I

    return-void
.end method

.method public static pushMatrix()V
    .locals 3

    sget v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->stackTop:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->stackTop:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mStack:[[F

    sget v2, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->stackTop:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMMatrix:[F

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static rotate(FFFF)V
    .locals 6

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public static scale(FFF)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public static setCamera(FFFFFFFFF)V
    .locals 11

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mVMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-void
.end method

.method public static setInitStack()V
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMMatrix:[F

    sget-object v1, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void
.end method

.method public static setProject(FFFFFF)V
    .locals 8

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mProjMatrix:[F

    const/4 v1, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method

.method public static transtate(FFF)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/facecute/gles/MatrixState;->mMMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

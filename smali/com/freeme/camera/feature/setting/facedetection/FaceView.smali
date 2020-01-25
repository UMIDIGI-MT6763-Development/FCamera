.class public Lcom/freeme/camera/feature/setting/facedetection/FaceView;
.super Landroid/view/View;
.source "FaceView.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mDisplayOrientation:I

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaces:[Lcom/freeme/camera/feature/setting/facedetection/Face;

.field private mMirror:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mReallyShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/facedetection/FaceView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mReallyShown:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08017a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public hasReallyShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mReallyShown:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mReallyShown:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mFaces:[Lcom/freeme/camera/feature/setting/facedetection/Face;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mFaces:[Lcom/freeme/camera/feature/setting/facedetection/Face;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/freeme/camera/feature/setting/facedetection/Face;->rect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mPreviewWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mPreviewHeight:I

    iget v4, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mDisplayOrientation:I

    iget-boolean v5, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mMirror:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/freeme/camera/common/utils/CoordinatesTransform;->normalizedPreviewToUi(Landroid/graphics/Rect;IIIZ)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public resetReallyShown()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mReallyShown:Z

    return-void
.end method

.method public setDisplayOrientation(II)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/freeme/camera/common/utils/CameraUtil;->isCameraFacingFront(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mMirror:Z

    return-void
.end method

.method public setFaces([Lcom/freeme/camera/feature/setting/facedetection/Face;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mFaces:[Lcom/freeme/camera/feature/setting/facedetection/Face;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->invalidate()V

    return-void
.end method

.method public updatePreviewSize(II)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePreviewSize] width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceView;->mPreviewHeight:I

    return-void
.end method

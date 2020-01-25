.class Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressBarDrawable.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAttachedView:Landroid/view/View;

.field private mBlockSizes:[I

.field private mCleanBlock:Landroid/graphics/drawable/Drawable;

.field private mDirtyBlock:Landroid/graphics/drawable/Drawable;

.field private mPadding:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;[II)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mBlockSizes:[I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mBlockSizes:[I

    iput p4, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mPadding:I

    const p3, 0x7f0801bf

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f0801c0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mBlockSizes:[I

    aget v5, v4, v1

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    aget v6, v4, v1

    add-int/2addr v6, v2

    aget v4, v4, v1

    add-int/2addr v4, v3

    invoke-virtual {v5, v2, v3, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mDirtyBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v4, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[draw]dirty block,i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " xoffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " yoffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mBlockSizes:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mPadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mBlockSizes:[I

    array-length v1, v1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mAttachedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mBlockSizes:[I

    aget v5, v4, v0

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    aget v6, v4, v0

    add-int/2addr v6, v2

    aget v4, v4, v0

    add-int/2addr v4, v3

    invoke-virtual {v5, v2, v3, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mCleanBlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v4, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[draw]rest,i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " xoffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " yoffset = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mBlockSizes:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mPadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getIntrinsicWidth()I
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mBlockSizes:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mBlockSizes:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mPadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mBlockSizes:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/2addr v2, v0

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getIntrinsicWidth]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLevelChange:]level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

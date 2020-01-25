.class public Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;
.super Landroid/widget/ImageView;
.source "NaviLineImageView.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mBottom:I

.field private mFirstDraw:Z

.field private mLeft:I

.field private mRight:I

.field private mTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mLeft:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mTop:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mRight:I

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mBottom:I

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mFirstDraw:Z

    return-void
.end method


# virtual methods
.method public layout(IIII)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[layout]left ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mFirstDraw:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mLeft:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mTop:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mRight:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mBottom:I

    if-ne v0, p4, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mFirstDraw:Z

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onLayout]changed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " left ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    return-void
.end method

.method public setLayoutPosition(IIII)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setLayoutPosition] left ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mLeft:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mTop:I

    iput p3, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mRight:I

    iput p4, p0, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->mBottom:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/freeme/camera/feature/mode/panorama/view/NaviLineImageView;->layout(IIII)V

    return-void
.end method

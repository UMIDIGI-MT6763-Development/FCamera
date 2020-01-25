.class public Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;,
        Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;

.field private d:F

.field private e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->a:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->d:F

    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;->Right:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    const/4 v0, 0x2

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->f:I

    const/16 v0, 0x18

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->g:I

    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->h:Ljava/lang/String;

    const-string v0, "#000000"

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public getMarkImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMarkMargin()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->d:F

    return v0
.end method

.method public getMarkPosition()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->a:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    return-object v0
.end method

.method public getMarkText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkTextColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkTextPadding()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->f:I

    return v0
.end method

.method public getMarkTextPosition()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    return-object v0
.end method

.method public getMarkTextShadowColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkTextSize()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->g:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMarkImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setMarkMargin(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->d:F

    return-void
.end method

.method public setMarkPosition(Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->a:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    return-void
.end method

.method public setMarkText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->b:Ljava/lang/String;

    return-void
.end method

.method public setMarkTextColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->h:Ljava/lang/String;

    return-void
.end method

.method public setMarkTextPadding(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->f:I

    return-void
.end method

.method public setMarkTextPosition(Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->e:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    return-void
.end method

.method public setMarkTextShadowColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->i:Ljava/lang/String;

    return-void
.end method

.method public setMarkTextSize(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;->g:I

    return-void
.end method

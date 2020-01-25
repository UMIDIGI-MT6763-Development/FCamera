.class public Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;
    }
.end annotation


# instance fields
.field public alignment:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "alignment"
    .end annotation
.end field

.field public backgroundColor:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "backgroundColor"
    .end annotation
.end field

.field public categoryId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "category_id"
    .end annotation
.end field

.field public color:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "color"
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "content"
    .end annotation
.end field

.field public groupId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "group_id"
    .end annotation
.end field

.field public paddings:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "paddings"
    .end annotation
.end field

.field public rectHeight:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "rect_height"
    .end annotation
.end field

.field public rectLeft:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "rect_left"
    .end annotation
.end field

.field public rectTop:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "rect_top"
    .end annotation
.end field

.field public rectWidth:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "rect_width"
    .end annotation
.end field

.field public shadowColor:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "shadowColor"
    .end annotation
.end field

.field public stickerId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "sticker_id"
    .end annotation
.end field

.field public textId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "id"
    .end annotation
.end field

.field public textSize:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "size"
    .end annotation
.end field

.field public textType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "type"
    .end annotation
.end field

.field public underline:Z
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "underline"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->deserialize(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;-><init>()V

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textId:J

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->stickerId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->stickerId:J

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->groupId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->groupId:J

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->categoryId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->categoryId:J

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textType:I

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textType:I

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->shadowColor:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->shadowColor:Ljava/lang/String;

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textSize:F

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textSize:F

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->alignment:I

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->alignment:I

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectLeft:F

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectLeft:F

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectTop:F

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectTop:F

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectWidth:F

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectWidth:F

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectHeight:F

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectHeight:F

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->paddings:I

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->paddings:I

    iget-boolean v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->underline:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->underline:Z

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->backgroundColor:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public deserialize(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textId:J

    const-string v0, "sticker_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->stickerId:J

    const-string v0, "group_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->groupId:J

    const-string v0, "category_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->categoryId:J

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textType:I

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->content:Ljava/lang/String;

    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    const-string v0, "shadowColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->shadowColor:Ljava/lang/String;

    const-string v0, "size"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textSize:F

    const-string v0, "alignment"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->alignment:I

    const-string v0, "rect_left"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectLeft:F

    const-string v0, "rect_top"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectTop:F

    const-string v0, "rect_width"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectWidth:F

    const-string v0, "rect_height"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectHeight:F

    return-void
.end method

.method public getAlignment()Landroid/graphics/Paint$Align;
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->alignment:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object v0

    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->color:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectLeft:F

    iget v2, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectTop:F

    iget v3, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectWidth:F

    add-float/2addr v3, v1

    iget v4, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->rectHeight:F

    add-float/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getShadowColor()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->shadowColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    return v0

    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText;->textType:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;->TypeDefault:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;

    return-object v0

    :pswitch_0
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;->TypeWeather:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;->TypeLocal:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;->TypeDateTime:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;

    return-object v0

    :pswitch_3
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;->TypeDate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;

    return-object v0

    :pswitch_4
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;->TypeTime:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerText$StickerTextType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

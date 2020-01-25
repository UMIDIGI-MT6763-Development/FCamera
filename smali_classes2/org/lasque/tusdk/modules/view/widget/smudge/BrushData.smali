.class public final Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$SizeType;,
        Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;,
        Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;,
        Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field public args:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "args"
    .end annotation
.end field

.field public brushId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "id"
    .end annotation
.end field

.field public brushImageKey:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "brush_name"
    .end annotation
.end field

.field public brushType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "brush_type"
    .end annotation
.end field

.field public code:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "code"
    .end annotation
.end field

.field public groupId:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "group_id"
    .end annotation
.end field

.field public isInternal:Z

.field public name:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "name"
    .end annotation
.end field

.field public positionType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "position_type"
    .end annotation
.end field

.field public rotateType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "rotate_type"
    .end annotation
.end field

.field public sizeType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "size_type"
    .end annotation
.end field

.field public thumb:Ljava/lang/String;

.field public thumbKey:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "thumb_name"
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

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->deserialize(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static create(JLjava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;-><init>()V

    iput-wide p0, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushId:J

    iput-object p2, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumbKey:Ljava/lang/String;

    iput-object p3, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushImageKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;-><init>()V

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushId:J

    iget-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->groupId:J

    iput-wide v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->groupId:J

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushType:I

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushType:I

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumb:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumb:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumbKey:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumbKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushImageKey:Ljava/lang/String;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushImageKey:Ljava/lang/String;

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->rotateType:I

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->rotateType:I

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->positionType:I

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->positionType:I

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->sizeType:I

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->sizeType:I

    return-object v0
.end method

.method public deserialize(Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushId:J

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    const-string v0, "group_id"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->groupId:J

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->name:Ljava/lang/String;

    const-string v0, "thumb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumb:Ljava/lang/String;

    const-string v0, "thumb_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->thumbKey:Ljava/lang/String;

    const-string v0, "brush_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushImageKey:Ljava/lang/String;

    const-string v0, "brush_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushType:I

    const-string v0, "rotate_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->rotateType:I

    const-string v0, "position_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->positionType:I

    const-string v0, "size_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->sizeType:I

    const-string v0, "args"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->toHashMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->args:Ljava/util/HashMap;

    return-void
.end method

.method public final getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNameKey()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "lsq_brush_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPositionType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->positionType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;->PositionAuto:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    return-object v0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;->PositionRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$PositionType;

    return-object v0
.end method

.method public getRotateType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->rotateType:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateNone:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    return-object v0

    :pswitch_0
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateLimitRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;->RotateAuto:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$RotateType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSizeType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$SizeType;
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->sizeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$SizeType;->SizeAuto:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$SizeType;

    return-object v0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$SizeType;->SizeRandom:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$SizeType;

    return-object v0
.end method

.method public getType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushType:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeEraser:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    return-object v0

    :pswitch_0
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeOnline:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeStamp:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeMosaic:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setType(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$1;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->brushType:I

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x4

    goto :goto_0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

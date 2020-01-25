.class public Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;,
        Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerLoopMode;,
        Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;
    }
.end annotation


# instance fields
.field public categoryId:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "model_type"
    .end annotation
.end field

.field public frameInterval:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "animation_interval"
    .end annotation
.end field

.field public loopMode:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "animation_loop"
    .end annotation
.end field

.field public loopStartIndex:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "animation_loop_start"
    .end annotation
.end field

.field public modelHeight:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "model_height"
    .end annotation
.end field

.field public modelWidth:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "model_width"
    .end annotation
.end field

.field public offsetX:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "offset_x"
    .end annotation
.end field

.field public offsetY:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "offset_y"
    .end annotation
.end field

.field public posType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "pos_type"
    .end annotation
.end field

.field public ratio:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "ratio"
    .end annotation
.end field

.field public renderType:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "render_type"
    .end annotation
.end field

.field public resourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "animation_files"
    .end annotation
.end field

.field public rotation:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "rotation"
    .end annotation
.end field

.field public scale:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "scale"
    .end annotation
.end field

.field public screenHeight:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "screem_height"
    .end annotation
.end field

.field public screenWidth:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "screen_width"
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

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->deserialize(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "model_width"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->modelWidth:I

    const-string v0, "model_height"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->modelHeight:I

    const-string v0, "screen_width"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->screenWidth:I

    const-string v0, "screen_height"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->screenHeight:I

    const-string v0, "model_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->categoryId:I

    const-string v0, "pos_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->posType:I

    const-string v0, "render_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->renderType:I

    const-string v0, "ratio"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->ratio:F

    const-string v0, "scale"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->scale:F

    const-string v0, "offset_x"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->offsetX:F

    const-string v0, "offset_y"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->offsetY:F

    const-string v0, "rotation"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->rotation:F

    const-string v0, "animation_interval"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->frameInterval:I

    const-string v0, "animation_files"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->toStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->resourceList:Ljava/util/ArrayList;

    const-string v0, "animation_loop"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->loopMode:I

    const-string v0, "animation_loop_start"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->loopStartIndex:I

    return-void
.end method

.method public getDesignScreenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->screenWidth:I

    if-lez v0, :cond_0

    iget v1, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->screenHeight:I

    if-lez v1, :cond_0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x320

    const/16 v1, 0x588

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public getFrameInterval()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->frameInterval:I

    if-gtz v0, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->frameInterval:I

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->frameInterval:I

    return v0
.end method

.method public getPosType()Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->posType:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosHead:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_0
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenBottomCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenTopCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenLeftCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_3
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenRightCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_4
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenCenter:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_5
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenRightBottom:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_6
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenLeftBottom:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_7
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenRightTop:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_8
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosScreenLeftTop:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_9
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosFullScreen:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_a
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosLip:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_b
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosEyeShadow:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_c
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosJaw:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_d
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosHead:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_e
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosCheek:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_f
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosMouth:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_10
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosNose:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_11
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosEye:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_12
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosEyeBrow:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRenderType()Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->renderType:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;->lsqRenderAlphaBlend:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;

    return-object v0

    :pswitch_0
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;->lsqRenderLightGlare:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;->lsqrenderBlendMultipy:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;->lsqRenderAlphaBlend:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasAnimationSupported()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->resourceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public Lcom/mediatek/accessor/parser/ParserFactory;
.super Ljava/lang/Object;
.source "ParserFactory.java"


# static fields
.field public static final GOOGLE_STEREO_INFO:I = 0x0

.field public static final SEGMENT_MASK_INFO:I = 0x1

.field public static final STEREO_BUFFER_INFO:I = 0x2

.field public static final STEREO_CAPTURE_INFO:I = 0x5

.field public static final STEREO_CONFIG_INFO:I = 0x3

.field public static final STEREO_DEPTH_INFO:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParserInstance(ILjava/lang/Object;[B[BLjava/util/Map;)Lcom/mediatek/accessor/parser/IParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "[B[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/mediatek/accessor/parser/IParser;"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;

    check-cast p1, Lcom/mediatek/accessor/data/StereoCaptureInfo;

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;-><init>([B[BLjava/util/Map;Lcom/mediatek/accessor/data/StereoCaptureInfo;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;

    check-cast p1, Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;-><init>([B[BLjava/util/Map;Lcom/mediatek/accessor/data/StereoDepthInfo;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;

    check-cast p1, Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;-><init>([B[BLjava/util/Map;Lcom/mediatek/accessor/data/StereoConfigInfo;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;

    check-cast p1, Lcom/mediatek/accessor/data/StereoBufferInfo;

    invoke-direct {p0, p4, p1}, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;-><init>(Ljava/util/Map;Lcom/mediatek/accessor/data/StereoBufferInfo;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;

    check-cast p1, Lcom/mediatek/accessor/data/SegmentMaskInfo;

    invoke-direct {p0, p2, p4, p1}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;-><init>([BLjava/util/Map;Lcom/mediatek/accessor/data/SegmentMaskInfo;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/mediatek/accessor/parser/GoogleStereoInfoParser;

    check-cast p1, Lcom/mediatek/accessor/data/GoogleStereoInfo;

    invoke-direct {p0, p2, p3, p1}, Lcom/mediatek/accessor/parser/GoogleStereoInfoParser;-><init>([B[BLcom/mediatek/accessor/data/GoogleStereoInfo;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

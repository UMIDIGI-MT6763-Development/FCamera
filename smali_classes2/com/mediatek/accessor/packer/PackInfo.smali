.class public Lcom/mediatek/accessor/packer/PackInfo;
.super Ljava/lang/Object;
.source "PackInfo.java"


# instance fields
.field public packedCustomizedBufArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public packedExtendedXmpBufArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public packedJpgBuf:[B

.field public packedStandardXmpBuf:[B

.field public unpackedBlurImageBuf:[B

.field public unpackedCustomizedBufMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public unpackedExtendedXmpBuf:[B

.field public unpackedJpgBuf:[B

.field public unpackedStandardXmpBuf:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

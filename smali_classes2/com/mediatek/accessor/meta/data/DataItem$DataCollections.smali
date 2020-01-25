.class public Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;
.super Ljava/lang/Object;
.source "DataItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/accessor/meta/data/DataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataCollections"
.end annotation


# instance fields
.field public dest:I

.field public listOfArrayItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$ArrayItem;",
            ">;"
        }
    .end annotation
.end field

.field public listOfBufferItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;",
            ">;"
        }
    .end annotation
.end field

.field public listOfCustomDataItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;",
            ">;"
        }
    .end annotation
.end field

.field public listOfSimpleValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field public listOfStructItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$StructItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

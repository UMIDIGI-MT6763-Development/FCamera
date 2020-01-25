.class public Lcom/mediatek/accessor/meta/data/DataItem$StructItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/accessor/meta/data/DataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StructItem"
.end annotation


# instance fields
.field public dest:I

.field public fieldName:Ljava/lang/String;

.field public fieldNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

.field public fieldValue:Ljava/lang/String;

.field public structName:Ljava/lang/String;

.field public structNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

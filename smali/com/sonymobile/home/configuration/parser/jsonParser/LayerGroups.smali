.class public final enum Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
.super Ljava/lang/Enum;
.source "LayerGroups.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

.field public static final enum ADVANCED_WIDGETS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

.field public static final enum FOLDERS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

.field public static final enum ICONS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

.field public static final enum WIDGETS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;


# instance fields
.field final mGroup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    const-string v1, "ICONS"

    const-string v2, "icons"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->ICONS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    .line 12
    new-instance v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    const-string v1, "WIDGETS"

    const-string v2, "widgets"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->WIDGETS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    .line 13
    new-instance v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    const-string v1, "ADVANCED_WIDGETS"

    const-string v2, "advanced-widgets"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->ADVANCED_WIDGETS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    .line 14
    new-instance v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    const-string v1, "FOLDERS"

    const-string v2, "folders"

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->FOLDERS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    sget-object v1, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->ICONS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->WIDGETS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->ADVANCED_WIDGETS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->FOLDERS:Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->$VALUES:[Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->mGroup:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->$VALUES:[Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    invoke-virtual {v0}, [Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;

    return-object v0
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/jsonParser/LayerGroups;->mGroup:Ljava/lang/String;

    return-object v0
.end method

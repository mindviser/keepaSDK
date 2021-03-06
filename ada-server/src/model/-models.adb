--  Keepa API
--  The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep_Alive connection.  Multiple requests can be made in parallel to increase throughput.
--
--  OpenAPI spec version: 1.0.0
--  Contact: info@keepa.com
--
--  NOTE: This package is auto generated by the swagger code generator 4.0.0-beta2.
--  https://openapi-generator.tech
--  Do not edit the class manually.

package body .Models is

   use Swagger.Streams;



   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in CategoryType) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("domainId", Value.Domain_Id);
      Into.Write_Entity ("catId", Value.Cat_Id);
      Into.Write_Entity ("name", Value.Name);
      Into.Write_Entity ("children", Value.Children);
      Serialize (Into, "children", Value.Children);
      Into.Write_Entity ("parent", Value.Parent);
      Into.Write_Entity ("highestRank", Value.Highest_Rank);
      Into.Write_Entity ("productCount", Value.Product_Count);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in CategoryType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out CategoryType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "domainId", Value.Domain_Id);
      Swagger.Streams.Deserialize (Object, "catId", Value.Cat_Id);
      Swagger.Streams.Deserialize (Object, "name", Value.Name);
      Swagger.Streams.Deserialize (Object, "children", Value.Children);
      Swagger.Streams.Deserialize (Object, "parent", Value.Parent);
      Swagger.Streams.Deserialize (Object, "highestRank", Value.Highest_Rank);
      Swagger.Streams.Deserialize (Object, "productCount", Value.Product_Count);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out CategoryType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : CategoryType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;



end .Models;

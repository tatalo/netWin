/**
 * <p>Title: O/R Mapping(For Nw200)</p>
 * <p>Description: BaseDAO/SqlObj/ResultSetObj/</p>
 * <p>Copyright: Copyright (c) 2015</p>
 * <p>Company: Free Open Everybody Use</p>
 * @author PA-ORM TableMining 
 * @desc Groovy ORM 1.0.3 (NW200/NW200(運動資料主檔))
 */
class Nw200 {
		static mapping = {
			table 'NW200'
			version false 
			//---1.OBJID PK0
			id column:"objid", generator:'Power228Generator'
		}


		//---2.建立人  
		String manCreated
		//---3.建立時間  
		Date dateCreated
		//---4.最後更新人  
		String manLastUpdated
		//---5.最後更新時間  
		Date lastUpdated
		//---6.多國語系  
		String locale
		//---7.類型  
		String type
		//---8.網站  
		String webnm
		//---9.管理URL  
		String manageurl
		//---10.管理URL_備份  
		String manageurlBk
		//---11.會員URL  
		String memberurl
		//---12.會員URL_備份  
		String memberurlBk


		static constraints = {
			manCreated(nullable:false)
			dateCreated(nullable:true)
			manLastUpdated(nullable:false)
			lastUpdated(nullable:true)
			locale(nullable:true)
			type(nullable:true)
			webnm(nullable:true)
			manageurl(nullable:true)
			manageurlBk(nullable:true)
			memberurl(nullable:true)
			memberurlBk(nullable:true)
		}

}

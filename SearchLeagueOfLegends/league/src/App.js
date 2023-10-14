import React, {useState} from 'react';
import axios from 'axios';
import './App.css';


function App() {

    const [searchText, setSearchText] = useState("");
    const [playerData, setPlayerData]= useState ({});
    const API_KEY ="your-api-key";

    function searchForPlayer(e) {

        var APICallString = "https://eun1.api.riotgames.com/lol/summoner/v4/summoners/by-name/" + searchText + "?api_key=" + API_KEY;


        axios.get(APICallString).then((res)=>{
            setPlayerData(res.data);
            console.log(playerData);


        }).catch(err=>{
            console.log(err);
        })

    }

    function MasteryPoints(e) {

        var APICallString = "https://eun1.api.riotgames.com/lol/summoner/v4/summoners/by-name/" + searchText + "?api_key=" + API_KEY;

        axios.get(APICallString).then((res)=>{
            setPlayerData(res.data);
            console.log(playerData);


        }).catch(err=>{
            console.log(err);
        })

    }


    return (
    <div className="App">
        <div className="container">
            <h5> League of Legends Player Searcher</h5>
            <input type="text" onChange={e => setSearchText(e.target.value)}/>
            <button onClick={e=> searchForPlayer(e)}>Search for player</button>
        </div>

        {JSON.stringify(playerData) !== '{}' ?
            <> <p>{playerData.name}  </p>
                <img width ="100" height="100" src ={"http://ddragon.leagueoflegends.com/cdn/12.23.1/img/profileicon/" +playerData.profileIconId+".png"} />

                <p> Summoner level {playerData.summonerLevel}</p>

            </>
            :
            <> <p> No player data </p> </>}
    </div>
  );
}

export default App;
